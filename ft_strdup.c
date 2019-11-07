/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strdup.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lmakynen <lmakynen@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/17 17:48:05 by lmakynen          #+#    #+#             */
/*   Updated: 2019/10/30 21:14:06 by lmakynen         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strdup(const char *s1)
{
	char	*copy;
	int		size;
	int		index;

	size = 0;
	while (s1[size] != '\0')
		size++;
	if (!(copy = (char*)malloc(sizeof(char) * (size + 1))))
		return (NULL);
	index = 0;
	while (s1[index] != '\0')
	{
		copy[index] = s1[index];
		index++;
	}
	copy[index] = '\0';
	return (copy);
}
