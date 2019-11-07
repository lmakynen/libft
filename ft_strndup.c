/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strndup.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lmakynen <lmakynen@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/11/04 21:21:54 by lmakynen          #+#    #+#             */
/*   Updated: 2019/11/04 21:54:23 by lmakynen         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strndup(const char *s1, size_t n)
{
	char		*copy;
	size_t		size;
	size_t		index;

	size = 0;
	while (s1[size] != '\0' && size < n)
		size++;
	if (!(copy = (char*)malloc(sizeof(char) * (size + 1))))
		return (NULL);
	index = 0;
	while (s1[index] != '\0' && index < n)
	{
		copy[index] = s1[index];
		index++;
	}
	copy[index] = '\0';
	return (copy);
}
